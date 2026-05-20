.class public final synthetic Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/HyperRemoteTransition;

.field public final synthetic f$1:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

.field public final synthetic f$2:Lcom/miui/home/recents/anim/AllElementParams;

.field public final synthetic f$3:Lcom/miui/home/recents/FastLaunchData;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/HyperRemoteTransition;Lcom/miui/home/recents/anim/FastLaunchWindowElement;Lcom/miui/home/recents/anim/AllElementParams;Lcom/miui/home/recents/FastLaunchData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/recents/anim/HyperRemoteTransition;

    iput-object p2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    iput-object p3, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;->f$2:Lcom/miui/home/recents/anim/AllElementParams;

    iput-object p4, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;->f$3:Lcom/miui/home/recents/FastLaunchData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/recents/anim/HyperRemoteTransition;

    iget-object v1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    iget-object v2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;->f$2:Lcom/miui/home/recents/anim/AllElementParams;

    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$$ExternalSyntheticLambda5;->f$3:Lcom/miui/home/recents/FastLaunchData;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->$r8$lambda$t3-7uv_8HOCr8w_1cfRfsnkfeXs(Lcom/miui/home/recents/anim/HyperRemoteTransition;Lcom/miui/home/recents/anim/FastLaunchWindowElement;Lcom/miui/home/recents/anim/AllElementParams;Lcom/miui/home/recents/FastLaunchData;)V

    return-void
.end method
