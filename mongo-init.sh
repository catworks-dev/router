set -e

mongo << EOF
db = db.getSiblingDB("admin");

db.auth("$MONGO_INITDB_ROOT_USERNAME", "$MONGO_INITDB_ROOT_PASSWORD")

db.createUser({
  user: "$MONGO_ADMIN",
  pwd: "$MONGO_ADMIN_PWD",
  roles: [
    { role: "userAdminAnyDatabase", db: "admin" },
    { role: "readWriteAnyDatabase", db: "admin" }
  ]
})
EOF