use utf8;

package SemanticWeb::Schema::NewsMediaOrganization;

# ABSTRACT: A News/Media organization such as a newspaper or TV station.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'NewsMediaOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

A News/Media organization such as a newspaper or TV station.




=head1 ATTRIBUTES


=head2 C<actionable_feedback_policy>

C<actionableFeedbackPolicy>

For a L<SemanticWeb::Schema::NewsMediaOrganization> or other news-related L<SemanticWeb::Schema::Organization>, a statement about public engagement activities (for news media, the newsroomâs), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication.

A actionable_feedback_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_actionable_feedback_policy>

A predicate for the L</actionable_feedback_policy> attribute.

=cut

has actionable_feedback_policy => (
    is        => 'rw',
    predicate => '_has_actionable_feedback_policy',
    json_ld   => 'actionableFeedbackPolicy',
);


=head2 C<corrections_policy>

C<correctionsPolicy>

For an L<SemanticWeb::Schema::Organization> (e.g. L<SemanticWeb::Schema::NewsMediaOrganization>), a statement describing (in news media, the newsroomâs) disclosure and correction policy for errors.

A corrections_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_corrections_policy>

A predicate for the L</corrections_policy> attribute.

=cut

has corrections_policy => (
    is        => 'rw',
    predicate => '_has_corrections_policy',
    json_ld   => 'correctionsPolicy',
);


=head2 C<diversity_policy>

C<diversityPolicy>

Statement on diversity policy by an L<SemanticWeb::Schema::Organization> e.g. a L<SemanticWeb::Schema::NewsMediaOrganization>. For a L<SemanticWeb::Schema::NewsMediaOrganization>, a statement describing the newsroomâs diversity policy on both staffing and sources, typically providing staffing data.

A diversity_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_diversity_policy>

A predicate for the L</diversity_policy> attribute.

=cut

has diversity_policy => (
    is        => 'rw',
    predicate => '_has_diversity_policy',
    json_ld   => 'diversityPolicy',
);


=head2 C<diversity_staffing_report>

C<diversityStaffingReport>

For an L<SemanticWeb::Schema::Organization> (often but not necessarily a L<SemanticWeb::Schema::NewsMediaOrganization>), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported.

A diversity_staffing_report should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Article']>

=item C<Str>

=back

=head2 C<_has_diversity_staffing_report>

A predicate for the L</diversity_staffing_report> attribute.

=cut

has diversity_staffing_report => (
    is        => 'rw',
    predicate => '_has_diversity_staffing_report',
    json_ld   => 'diversityStaffingReport',
);


=head2 C<ethics_policy>

C<ethicsPolicy>

Statement about ethics policy, e.g. of a L<SemanticWeb::Schema::NewsMediaOrganization> regarding journalistic and publishing practices, or of a L<SemanticWeb::Schema::Restaurant>, a page describing food source policies. In the case of a L<SemanticWeb::Schema::NewsMediaOrganization>, an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization.

A ethics_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_ethics_policy>

A predicate for the L</ethics_policy> attribute.

=cut

has ethics_policy => (
    is        => 'rw',
    predicate => '_has_ethics_policy',
    json_ld   => 'ethicsPolicy',
);


=head2 C<masthead>



For a L<SemanticWeb::Schema::NewsMediaOrganization>, a link to the masthead page or a page listing top editorial management.

A masthead should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_masthead>

A predicate for the L</masthead> attribute.

=cut

has masthead => (
    is        => 'rw',
    predicate => '_has_masthead',
    json_ld   => 'masthead',
);


=head2 C<mission_coverage_priorities_policy>

C<missionCoveragePrioritiesPolicy>

For a L<SemanticWeb::Schema::NewsMediaOrganization>, a statement on coverage priorities, including any public agenda or stance on issues.

A mission_coverage_priorities_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_mission_coverage_priorities_policy>

A predicate for the L</mission_coverage_priorities_policy> attribute.

=cut

has mission_coverage_priorities_policy => (
    is        => 'rw',
    predicate => '_has_mission_coverage_priorities_policy',
    json_ld   => 'missionCoveragePrioritiesPolicy',
);


=head2 C<no_bylines_policy>

C<noBylinesPolicy>

For a L<SemanticWeb::Schema::NewsMediaOrganization> or other news-related L<SemanticWeb::Schema::Organization>, a statement explaining when authors of articles are not named in bylines.

A no_bylines_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_no_bylines_policy>

A predicate for the L</no_bylines_policy> attribute.

=cut

has no_bylines_policy => (
    is        => 'rw',
    predicate => '_has_no_bylines_policy',
    json_ld   => 'noBylinesPolicy',
);


=head2 C<ownership_funding_info>

C<ownershipFundingInfo>

For an L<SemanticWeb::Schema::Organization> (often but not necessarily a L<SemanticWeb::Schema::NewsMediaOrganization>), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable.

A ownership_funding_info should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AboutPage']>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_ownership_funding_info>

A predicate for the L</ownership_funding_info> attribute.

=cut

has ownership_funding_info => (
    is        => 'rw',
    predicate => '_has_ownership_funding_info',
    json_ld   => 'ownershipFundingInfo',
);


=head2 C<unnamed_sources_policy>

C<unnamedSourcesPolicy>

For an L<SemanticWeb::Schema::Organization> (typically a L<SemanticWeb::Schema::NewsMediaOrganization>), a statement about policy on use of unnamed sources and the decision process required.

A unnamed_sources_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_unnamed_sources_policy>

A predicate for the L</unnamed_sources_policy> attribute.

=cut

has unnamed_sources_policy => (
    is        => 'rw',
    predicate => '_has_unnamed_sources_policy',
    json_ld   => 'unnamedSourcesPolicy',
);


=head2 C<verification_fact_checking_policy>

C<verificationFactCheckingPolicy>

Disclosure about verification and fact-checking processes for a L<SemanticWeb::Schema::NewsMediaOrganization> or other fact-checking L<SemanticWeb::Schema::Organization>.

A verification_fact_checking_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=head2 C<_has_verification_fact_checking_policy>

A predicate for the L</verification_fact_checking_policy> attribute.

=cut

has verification_fact_checking_policy => (
    is        => 'rw',
    predicate => '_has_verification_fact_checking_policy',
    json_ld   => 'verificationFactCheckingPolicy',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
