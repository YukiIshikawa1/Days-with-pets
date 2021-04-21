  // 親セレクトを変更したらjQueryが発火する
// $("#parent-form").on("change",function(){
//     // 親ボックスのidを取得してそのidをAjax通信でコントローラーへ送る
//     var parentValue = document.getElementById("parent-form").value;
// 　　//　("parent-form")は親ボックスのid属性
//     $.ajax({
//       url: '/posts/get_parent',
//       type: "GET",
//       data: {
//         parent_id: parentValue // 親ボックスの値をparent_idという変数にする。
//       },
//       dataType: 'json'
// 　　　　//json形式を指定
//     })
  
//     // 子のselectタグを追加
//   function build_childSelect() {
//     let child_select = `
//               <select name="post[category_id]" class="child_category_id">
//                 <option value="">---</option>
//               </select>
//               `
//     return child_select;
//   }
//     // selectタグにoptionタグを追加
//   function build_Option(children) {
//     let option_html = `
//                       <option value=${children.id}>${children.name}</option>
//                       `
//     return option_html;
//   }
  
//     // 子セレクトを変更したらjQueryが発火する
//   $(document).on("change", ".child_category_id", function () {
//     // 選択した子の値を取得する
//     let childValue = $(".child_category_id").val();
//     // 初期値("---")以外を選択したらajaxを開始
//     if (childValue.length != 0) {
//       $.ajax({
//         url: '/posts/search',
//         type: 'GET',
//         // postsコントローラーにparamsをchildren_idで送る
//         data: { children_id: childValue },
//         dataType: 'json'
//       })
//         .done(function (gc_data) {
//           // selectタグを生成してビューにappendする
//           let gc_select = build_gcSelect
//           $("#category_field").append(gc_select);
//           // jbuilderから取得したデータを1件ずつoptionタグにappendする
//           gc_data.forEach(function (gc_d) {
//             let option_html = build_Option(gc_d);
//             $(".gc_category_id").append(option_html);
//           });
//         })
//         .fail(function () {
//           alert("gcで通信エラーです！");
//         });
//     }
//   });