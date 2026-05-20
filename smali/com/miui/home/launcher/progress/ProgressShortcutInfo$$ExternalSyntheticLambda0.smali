.class public final synthetic Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

.field public final synthetic f$1:Lcom/miui/home/launcher/IShortcutIcon;

.field public final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/IShortcutIcon;

    iput-object p3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/IShortcutIcon;

    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->$r8$lambda$GLD6kEDskn0LG67CAAkMWG3mwl4(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
