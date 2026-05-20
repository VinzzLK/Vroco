.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$2;
.super Ljava/lang/Object;
.source "HideAppsGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)V

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->handleGuideViewBackPressed()V

    return-void
.end method
