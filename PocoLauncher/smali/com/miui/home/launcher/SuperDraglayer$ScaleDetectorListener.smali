.class public Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "SuperDraglayer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SuperDraglayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SuperDraglayer;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 841
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 842
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-static {v0}, Lcom/miui/home/launcher/SuperDraglayer;->access$100(Lcom/miui/home/launcher/SuperDraglayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    .line 843
    invoke-static {p1}, Lcom/miui/home/launcher/SuperDraglayer;->access$100(Lcom/miui/home/launcher/SuperDraglayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p1, :cond_0

    .line 844
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->access$202(Lcom/miui/home/launcher/SuperDraglayer;Z)Z

    .line 845
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-static {p1}, Lcom/miui/home/launcher/SuperDraglayer;->access$100(Lcom/miui/home/launcher/SuperDraglayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener$1;-><init>(Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;)V

    invoke-virtual {p1, v2, v1, v3}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDragEnd(FZLjava/lang/Runnable;)V

    .line 851
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->access$102(Lcom/miui/home/launcher/SuperDraglayer;Lcom/miui/home/launcher/util/TouchController;)Lcom/miui/home/launcher/util/TouchController;

    return v0

    :cond_0
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 859
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->access$202(Lcom/miui/home/launcher/SuperDraglayer;Z)Z

    .line 860
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-static {p1}, Lcom/miui/home/launcher/SuperDraglayer;->access$300(Lcom/miui/home/launcher/SuperDraglayer;)I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-static {p1}, Lcom/miui/home/launcher/SuperDraglayer;->access$100(Lcom/miui/home/launcher/SuperDraglayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-static {p0}, Lcom/miui/home/launcher/SuperDraglayer;->access$100(Lcom/miui/home/launcher/SuperDraglayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
