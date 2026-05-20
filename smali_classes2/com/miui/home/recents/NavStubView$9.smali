.class Lcom/miui/home/recents/NavStubView$9;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startHalfAppToHomeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 4517
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$9;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 4525
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$9;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->finishHalfAppToHome(Z)V

    return-void
.end method
