import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hdfc_response/model/hdfc_model.dart';

import '../services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    Future<HdfcModel>? hdfcmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HDFC Bank Info'),
        ),
        body: hdfcmodel == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : FutureBuilder<HdfcModel>(
                future: hdfcmodel,
                builder: (ctx, snapshot) {
                  // Checking if future is resolved
                  if (snapshot.connectionState == ConnectionState.done) {
                    // If we got an error
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          '${snapshot.error} occurred',
                          style: TextStyle(fontSize: 18),
                        ),
                      );

                      // if we got our data
                    } else if (snapshot.hasData) {
                      // Extracting data from snapshot object
                      final data = snapshot.data ;
                      return  ListView(
                        padding: const EdgeInsets.all(8),
                        children:  <Widget>[
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                             ),
                              child:ListTile(
                              title: Text("ID:${data!.id}", style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),

                          )),
                          Card(
                            color: Colors.grey[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child:ListTile( title: Text("Security:${data!.security}", style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                              leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                             ),),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("IndustryID:${data!.industryId}",style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                              leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("Industry:${data!.industry}",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                              leading:  CircleAvatar(child:Icon(Icons.info,size: 30,)),
                             )),

                          Card(
                            color: Colors.grey[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child:ListTile( title: Text("sectorId:${data!.sectorId}", style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                              leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                            ),),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("Sector:${data!.sector}",style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("MCAP:${data!.mcap}",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile(
                                title: Text("EV:${data!.ev}", style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),

                              )),
                          Card(
                            color: Colors.grey[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child:ListTile( title: Text("EVDateEnd:${data!.evDateEnd}", style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                              leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                            ),),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("IndustryID:${data!.industryId}",style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading:  CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("BookNavPerShare:${data!.bookNavPerShare}",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading:  CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile(
                                title: Text("TTMPE:${data!.ttmpe}", style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),

                              )),
                          Card(
                            color: Colors.grey[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child:ListTile( title: Text("TTMYearEnd:${data!.ttmYearEnd}", style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                              leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                            ),),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("Yield:${data!.welcomeYield}",style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading:  CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("YearEnd:${data!.yearEnd}",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              ))
                          ,
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("SectorSlug:${data!.sectorSlug}",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("IndustrySlug:${data!.industrySlug}",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("SecuritySlug:${data!.securitySlug}",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                          Card(
                              color: Colors.grey[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child:ListTile( title: Text("PEGRatio:${data!.pegRatio}",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                leading: CircleAvatar(child:Icon(Icons.info,size: 30,)),
                              )),
                        ],
                      );
                    }
                  }
                  return Center(child: CircularProgressIndicator());
                }
              )
         );
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData()  {
    hdfcmodel =  ApiService().getHdfcbankInfo();
    Future.delayed(const Duration(seconds: 5)).then((value) => setState(() {}));
  }
}
