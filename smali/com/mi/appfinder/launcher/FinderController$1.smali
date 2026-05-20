.class Lcom/mi/appfinder/launcher/FinderController$1;
.super Landroid/database/ContentObserver;
.source "FinderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/appfinder/launcher/FinderController;->onApplicationCreate(Landroid/app/Application;ZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/appfinder/launcher/FinderController;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/mi/appfinder/launcher/FinderController;Landroid/os/Handler;Landroid/app/Application;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mi/appfinder/launcher/FinderController$1;->this$0:Lcom/mi/appfinder/launcher/FinderController;

    iput-object p3, p0, Lcom/mi/appfinder/launcher/FinderController$1;->val$application:Landroid/app/Application;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provision changes to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomeFinderController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcom/mi/appfinder/launcher/FinderController$1;->val$application:Landroid/app/Application;

    invoke-static {p1}, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->isProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/mi/appfinder/launcher/FinderController$1;->this$0:Lcom/mi/appfinder/launcher/FinderController;

    invoke-static {p1}, Lcom/mi/appfinder/launcher/FinderController;->access$000(Lcom/mi/appfinder/launcher/FinderController;)V

    const/4 p1, 0x1

    .line 136
    invoke-static {p1}, Lcom/mi/appfinder/launcher/FinderController;->access$102(Z)Z

    .line 137
    iget-object p0, p0, Lcom/mi/appfinder/launcher/FinderController$1;->val$application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->access$200()Landroid/database/ContentObserver;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
