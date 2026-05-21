.class public final synthetic Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/LauncherAppWidgetHost;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/miui/home/launcher/LauncherWidgetView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherAppWidgetHost;ILcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iput p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;->f$2:Lcom/miui/home/launcher/LauncherWidgetView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;->f$2:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->$r8$lambda$obokNiNieVvY3YONmpx-_yhb24g(Lcom/miui/home/launcher/LauncherAppWidgetHost;ILcom/miui/home/launcher/LauncherWidgetView;)V

    return-void
.end method
