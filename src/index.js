import './main.css';
import { Main } from './Main.elm';
import registerServiceWorker from './registerServiceWorker';

var app = Main.embed(document.getElementById('root'));

// app.ports.getCompanies.subscribe(function(req) {
//     handleDBInfo(req.tx.db).then(function() {
//         db[req.tx.store.name]
//             .orderBy(req.orderBy)
//             .limit(req.limit)
//             .offset(req.offset)
//             .toArray()
//             .then(function(result) {
//                 db[req.tx.store.name].count().then(function(total) {
//                     app.ports.companyListGotten.send({
//                         limit: req.limit,
//                         offset: req.offset,
//                         orderBy: req.orderBy,
//                         total: total,
//                         result: result
//                     });
//                 });
//             });
//     });
// });

registerServiceWorker();
