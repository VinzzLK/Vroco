.class public final synthetic Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field public final synthetic f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iput-wide p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-wide v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->$r8$lambda$rjeyxOjSbsZC24kJ0gZ0vy8tKuw(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    return-void
.end method
