'use strict';

/**
 * gallerie service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::gallerie.gallerie');
