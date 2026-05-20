.class Lmiuix/internal/widget/ListPopup$ContainerView;
.super Landroid/widget/FrameLayout;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public constructor <init>(Lmiuix/internal/widget/ListPopup;Landroid/content/Context;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$ContainerView;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 203
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup$ContainerView;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p0, p1}, Lmiuix/internal/widget/ListPopup;->access$400(Lmiuix/internal/widget/ListPopup;Landroid/content/res/Configuration;)V

    return-void
.end method
