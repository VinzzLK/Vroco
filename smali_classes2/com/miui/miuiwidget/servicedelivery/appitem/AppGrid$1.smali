.class Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$1;
.super Landroid/content/BroadcastReceiver;
.source "AppGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;


# direct methods
.method constructor <init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appChanged, packageName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppGrid"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->access$000(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
