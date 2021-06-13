const { Post } = require('../models');

const postdata = [
  {
    title: 'Donec posuere metus vitae ipsum.',
    post_url: 'https://buzzfeed.com/in/imperdiet/et/commodo/vulputate.png',
    user_id: 10,
    article: 'asdfasdfasdfasdfasfgqwerqwerqwerqwer axczxcvzxcvzxcvzxcvzxcvzxcvzxcv'
  },
  {
    title: 'Morbi non quam nec dui luctus rutrum.',
    post_url: 'https://nasa.gov/donec.json',
    user_id: 8,
    article: 'asdfasdfasdfasdfasfgqwerqwerqwerqwer axczxcvzxcvzxcvzxcvzxcvzxcvzxcv'
  },
  {
    title: 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.',
    post_url: 'https://europa.eu/parturient/montes/nascetur/ridiculus/mus/etiam/vel.aspx',
    user_id: 1,
    article: 'asdfasdfasdfasdfasfgqwerqwerqwerqwer axczxcvzxcvzxcvzxcvzxcvzxcvzxcv'
  },
  {
    title: 'Nunc purus.',
    post_url: 'http://desdev.cn/enim/blandit/mi.jpg',
    user_id: 4,
    article: 'asdfasdfasdfasdfasfgqwerqwerqwerqwer axczxcvzxcvzxcvzxcvzxcvzxcvzxcv'
  }
];

const seedPosts = () => Post.bulkCreate(postdata);

module.exports = seedPosts;
