.class public final synthetic Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/SuperDraglayer;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/SuperDraglayer;

    iput-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/SuperDraglayer;

    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer;->$r8$lambda$yRjymHa4JaRpwgn8TapT1g_pG98(Lcom/miui/home/launcher/SuperDraglayer;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
