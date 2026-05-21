.class Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;
.super Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;
.source "RecentsWindowFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/RecentsWindowFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/RecentsWindowFrameLayout;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V
    .locals 5

    const/4 v0, 0x3

    .line 114
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableInsets(I)V

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->access$000(Lcom/miui/home/launcher/RecentsWindowFrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    iget-object p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;->this$0:Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    add-int/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Region;-><init>(IIII)V

    .line 117
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Landroid/graphics/Region;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    :goto_0
    return-void
.end method
