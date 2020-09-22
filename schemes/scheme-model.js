const db = require('../data/db-config.js');

function find() {
  return db('schemes');
}

function findById(id) {
  return db('schemes')
  .where({ id });
}

function findSteps(id) {
    return db('steps')
    .where('scheme_id', id)
  }
    
  function add(schemeData) {
    return db('schemes')
    .insert(schemeData)
  }

  function addStep(stepData, scheme_id) {
    return db('steps')
    .insert(stepData)
    .where('scheme_id', id)
  }

  function update(changes, id) {
    return db('schemes')
    .update(changes)
    .where('id', id)
  }
  
  function remove(id) {
    return db('schemes')
    .del()
    .where('id', id)
  }

  module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
  }