.class Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;
.super Ljava/lang/Object;
.source "SearchTouchAreaController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->setTouchArea(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

.field final synthetic val$spaceView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;Landroid/view/View;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->val$spaceView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->access$000(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->access$000(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;)I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->val$spaceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->access$002(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;I)I

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->access$000(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->this$0:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->access$000(Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController$1;->val$spaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method
