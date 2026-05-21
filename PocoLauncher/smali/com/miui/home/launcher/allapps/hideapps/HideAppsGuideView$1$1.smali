.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1$1;
.super Ljava/lang/Object;
.source "HideAppsGuideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;

.field final synthetic val$animation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;Landroid/view/animation/Animation;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1$1;->this$1:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1$1;->val$animation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1$1;->this$1:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
