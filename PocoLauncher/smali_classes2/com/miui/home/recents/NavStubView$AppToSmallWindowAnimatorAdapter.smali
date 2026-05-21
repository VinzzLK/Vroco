.class Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppToSmallWindowAnimatorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5099
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 5102
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$AppToSmallWindowAnimatorAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$4400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->startStrokeSwitch()V

    return-void
.end method
