.class Lcom/miui/home/launcher/uninstall/UninstallController$4;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;->announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$itemInfo:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$4;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/UninstallController$4;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 297
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$4;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getAnnounceForDelete()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const p0, 0x7f10006f

    .line 297
    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
