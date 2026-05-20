.class public final synthetic Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->$r8$lambda$OOKLX0GMXTsOZaJv6vJ2eAER8H0(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
