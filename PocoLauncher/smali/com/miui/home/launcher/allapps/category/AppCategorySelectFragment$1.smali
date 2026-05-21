.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$1;
.super Ljava/lang/Object;
.source "AppCategorySelectFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 170
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v0, :cond_0

    .line 171
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V

    :cond_0
    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method
