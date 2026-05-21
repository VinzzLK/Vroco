.class Lcom/miui/home/launcher/Application$1;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Application;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Application;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Application;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/Application$1;->this$0:Lcom/miui/home/launcher/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->getInstance(Landroid/content/Context;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->resetRecordStatus()V

    return-void
.end method
