.class public final synthetic Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->$r8$lambda$_Y4tTpLqQeZwVDmZP7S30jDB4P8(ILcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method
