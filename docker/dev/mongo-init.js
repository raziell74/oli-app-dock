// Core Platform DB  
coredb = db.getSiblingDB('core');
coredb.createUser({
  user: 'core-user',
  pwd: 'olidev',
  roles: [{ role: 'readWrite', db: 'core' }],
});

// Create pre-fill users collection
coredb.users.insert([
  {
    username: 'admin',
    name: 'Admin',
    email: 'admin@oli.com',
    password: 'olidev2000!',
    role: ['admin', 'inspector', 'home_owner']
  },
  {
    username: 'inspector',
    name: 'Bill WallInspector',
    email: 'inspector@oli.com',
    password: 'olidev2000!',
    role: ['inspector']
  },
  {
    username: 'homeowner',
    name: 'Jordan McHomeOwner',
    email: 'homeowner@oli.com',
    password: 'olidev2000!',
    role: ['home_owner']
  },
  {
    username: 'guest',
    name: 'Bubbles McFluffernutter',
    email: 'guest@oli.com',
    password: 'olidev2000!',
    role: ['guest']
  },
]);

// Inspectors DB
inspectorsdb = db.getSiblingDB('inspectors');
inspectorsdb.createUser({
  user: 'inspectors-user',
  pwd: 'olidev',
  roles: [{ role: 'readWrite', db: 'inspectors' }],
});

// Create companies collection that holds a list of inspection companies 
var inspectionUser = coredb.users.findOne({ username: 'inspector' });
inspectorsdb.companies.insert([
  {
    users: [inspectionUser._id],
    company_name: 'Test Inspections',
    contact_info: {
      phone: '777-777-7777',
      email: 'test.inspection.company@oli.com'
    }
  },
]);

// Inspection Reports Database
reportsdb = db.getSiblingDB('reports');
reportsdb.createUser({
  user: 'reports-user',
  pwd: 'olidev',
  roles: [{ role: 'readWrite', db: 'reports' }],
});
