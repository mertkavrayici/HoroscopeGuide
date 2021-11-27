import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscopeguideexample/burc_detay.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget{

  final  Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc,Key? key}) :super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(

      elevation: 4,


      child: ListTile(

        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: listelenenBurc)));

        },
        leading: Image.asset("images/"+listelenenBurc.burcKucukResim,width: 64,height: 64,) ,
        title: Text(listelenenBurc.burcAdi,style: TextStyle(fontSize: 24),),
        subtitle: Text(listelenenBurc.burcTarihi,style: TextStyle(fontSize: 20),),
        trailing: Icon(Icons.arrow_forward,color: Colors.pink,),
      ),
    );
  }
  
  
  
}