.class Lcom/miui/home/launcher/ColorFilterContainerView$4;
.super Ljava/lang/Object;
.source "ColorFilterContainerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

.field final synthetic val$allAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ColorFilterContainerView;Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$4;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    iput-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView$4;->val$allAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$4;->val$allAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$4;->val$allAppsRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$4;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isFilteringAppsWithColor()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->showScrollbar(Z)V

    :cond_0
    return-void
.end method
