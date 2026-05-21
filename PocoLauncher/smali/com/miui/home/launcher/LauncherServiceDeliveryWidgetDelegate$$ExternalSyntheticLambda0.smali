.class public final synthetic Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->start()V

    return-void
.end method
