.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda89;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda89;->f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda89;->f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$TipLkTp6KyR1MUasN2tW0ei8fUA(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0
.end method
