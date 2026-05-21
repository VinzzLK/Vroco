.class Lcom/miui/home/launcher/allapps/search/ZeroMaskView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "ZeroMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->initRecyclerview(Lcom/miui/home/launcher/Launcher;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/search/ZeroMaskView;Landroid/content/Context;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView$1;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
