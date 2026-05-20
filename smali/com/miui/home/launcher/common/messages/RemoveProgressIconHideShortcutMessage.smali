.class public Lcom/miui/home/launcher/common/messages/RemoveProgressIconHideShortcutMessage;
.super Ljava/lang/Object;
.source "RemoveProgressIconHideShortcutMessage.java"


# instance fields
.field private iconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/RemoveProgressIconHideShortcutMessage;->iconView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/common/messages/RemoveProgressIconHideShortcutMessage;->iconView:Landroid/view/View;

    return-object p0
.end method
