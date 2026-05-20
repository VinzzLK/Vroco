.class public final synthetic Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/StateManager;

.field public final synthetic f$1:Lcom/miui/home/recents/anim/AllElementParams;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/recents/anim/AllElementParams;

    iput-object p3, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/recents/anim/AllElementParams;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/anim/StateManager;->$r8$lambda$Tm2jrmCdsR_LzM6nNEwhM1F1VoU(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/AllElementParams;Ljava/lang/Runnable;)V

    return-void
.end method
