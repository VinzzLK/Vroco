.class final Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageInfo;


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field private final fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

.field private final messageSetWireFormat:Z

.field private final syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;


# virtual methods
.method public getCheckInitialized()[I
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object p0
.end method

.method public getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 0

    .line 97
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-object p0
.end method

.method public getFields()[Landroidx/datastore/preferences/protobuf/FieldInfo;
    .locals 0

    .line 92
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

    return-object p0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public isMessageSetWireFormat()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return p0
.end method
