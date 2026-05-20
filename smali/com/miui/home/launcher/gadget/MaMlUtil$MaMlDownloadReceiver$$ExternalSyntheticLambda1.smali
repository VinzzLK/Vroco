.class public final synthetic Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/miui/maml/widget/edit/MamlDownloadStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;->f$2:Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;->f$2:Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->$r8$lambda$NgWzUtrXLY_rd8v3gIelgGYCIdU(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    return-void
.end method
