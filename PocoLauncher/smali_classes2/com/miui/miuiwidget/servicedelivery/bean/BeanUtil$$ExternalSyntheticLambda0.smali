.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil$$ExternalSyntheticLambda0;->f$0:Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil$$ExternalSyntheticLambda0;->f$0:Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/bean/BeanUtil;->$r8$lambda$7mNt2ax5PevF4UO7mHYy2zh_R3E(Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p0

    return p0
.end method
