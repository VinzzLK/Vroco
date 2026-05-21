.class public final synthetic Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;

.field public final synthetic f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda0;->f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$$ExternalSyntheticLambda0;->f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->$r8$lambda$j1rOUgmpHrut_cWXI_knNU2k2fU(Ljava/lang/ref/WeakReference;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V

    return-void
.end method
