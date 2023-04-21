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
    firstName: 'System',
    lastName: 'Admin',
    email: 'admin@oli.com',
    password: 'change-me',
    roles: ['admin', 'inspector', 'property-owner']
  },
  {
    username: 'inspector',
    firstName: 'Bill',
    lastName: 'WallInspector',
    email: 'inspector@oli.com',
    password: 'change-me',
    roles: ['inspector']
  },
  {
    username: 'homeowner',
    firstName: 'Jordan',
    lastName: 'McHomeOwner',
    email: 'homeowner@oli.com',
    password: 'change-me',
    roles: ['property-owner']
  },
  {
    username: 'guest',
    firstName: 'Bubbles',
    lastName: 'McFluffernutter',
    email: 'guest@oli.com',
    password: 'change-me',
    roles: ['guest']
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
