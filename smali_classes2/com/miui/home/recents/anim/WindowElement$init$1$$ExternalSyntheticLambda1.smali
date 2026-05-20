.class public final synthetic Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/miui/home/recents/anim/WindowElement;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(ZLcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/recents/anim/WindowElement;

    iput-boolean p3, p0, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;->f$0:Z

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/recents/anim/WindowElement;

    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/anim/WindowElement$init$1;->$r8$lambda$zbGjcf5URlrvU3S3pMDkTI8Cu2o(ZLcom/miui/home/recents/anim/WindowElement;Z)V

    return-void
.end method
