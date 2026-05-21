.class public final synthetic Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field public final synthetic f$1:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

.field public final synthetic f$2:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->$r8$lambda$nYYXG2GW-abTLi6n6qKYZ5R2FlA(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method
