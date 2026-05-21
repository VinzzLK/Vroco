.class Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;
.super Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;
.source "SingleChoicePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/SingleChoicePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceSingleChoiceHelper"
.end annotation


# instance fields
.field mPreference:Lmiuix/preference/SingleChoicePreference;


# direct methods
.method constructor <init>(Lmiuix/preference/SingleChoicePreference;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;-><init>(Landroid/widget/Checkable;)V

    .line 343
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/SingleChoicePreference;

    return-void
.end method


# virtual methods
.method getPreference()Landroidx/preference/Preference;
    .locals 0

    .line 353
    iget-object p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/SingleChoicePreference;

    return-object p0
.end method

.method getValue()Ljava/lang/String;
    .locals 0

    .line 358
    iget-object p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/SingleChoicePreference;

    invoke-virtual {p0}, Lmiuix/preference/SingleChoicePreference;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 348
    iget-object p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/SingleChoicePreference;

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    return-void
.end method
