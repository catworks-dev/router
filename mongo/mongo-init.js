db = db.getSiblingDB("admin");

db.auth(process.env.MONGO_INITDB_ROOT, process.env.MONGO_INITDB_ROOT_PASSWORD)

db.createUser({
  user: process.env.MONGO_ADMIN,
  pwd: process.env.MONGO_ADMIN_PWD,
  roles: [
    { role: "userAdminAnyDatabase", db: "admin" },
    { role: "readWriteAnyDatabase", db: "admin" }
  ]
})