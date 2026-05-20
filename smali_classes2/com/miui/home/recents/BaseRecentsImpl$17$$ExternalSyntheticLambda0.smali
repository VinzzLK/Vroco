.class public final synthetic Lcom/miui/home/recents/BaseRecentsImpl$17$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl$17;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl$17;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$17$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$17;

    iput-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl$17$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$17$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$17;

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$17$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl$17;->$r8$lambda$H57W2dvxC3DPEB3543arfy3WaVI(Lcom/miui/home/recents/BaseRecentsImpl$17;Landroid/content/Intent;)V

    return-void
.end method
