.class public final synthetic Lcom/miui/home/launcher/maml/MaMlWidgetUtilities$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;

.field public final synthetic f$1:Lcom/miui/home/launcher/WidgetPermissionAction;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/WidgetPermissionAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/WidgetPermissionAction;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->$r8$lambda$is2tDudbBrVsusEuXWpgtE4b8e8(Lcom/miui/home/launcher/WidgetBackgroundPermissionInfo;Lcom/miui/home/launcher/WidgetPermissionAction;)V

    return-void
.end method
