.class public final synthetic Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field public final synthetic f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

.field public final synthetic f$2:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

.field public final synthetic f$3:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iput-object p4, p0, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->$r8$lambda$AC_5wqxqcHUbwWBdSgkGHw5SxcQ(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
