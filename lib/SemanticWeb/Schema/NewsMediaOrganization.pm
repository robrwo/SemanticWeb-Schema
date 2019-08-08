use utf8;

package SemanticWeb::Schema::NewsMediaOrganization;

# ABSTRACT: A News/Media organization such as a newspaper or TV station.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'NewsMediaOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

A News/Media organization such as a newspaper or TV station.




=head1 ATTRIBUTES


=head2 C<actionable_feedback_policy>

C<actionableFeedbackPolicy>

=begin html

For a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a> or
other news-related <a class="localLink"
href="http://schema.org/Organization">Organization</a>, a statement about
public engagement activities (for news media, the newsroomâs), including
involving the public - digitally or otherwise -- in coverage decisions,
reporting and activities after publication.

=end html


A actionable_feedback_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has actionable_feedback_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'actionableFeedbackPolicy',
);


=head2 C<corrections_policy>

C<correctionsPolicy>

=begin html

For an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (e.g. <a
class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>),
a statement describing (in news media, the newsroomâs) disclosure and
correction policy for errors.

=end html


A corrections_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has corrections_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'correctionsPolicy',
);


=head2 C<diversity_policy>

C<diversityPolicy>

=begin html

Statement on diversity policy by an <a class="localLink"
href="http://schema.org/Organization">Organization</a> e.g. a <a
class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>.
For a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>, a
statement describing the newsroomâs diversity policy on both staffing and
sources, typically providing staffing data.

=end html


A diversity_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has diversity_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'diversityPolicy',
);


=head2 C<diversity_staffing_report>

C<diversityStaffingReport>

=begin html

For an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (often but not
necessarily a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>),
a report on staffing diversity issues. In a news context this might be for
example ASNE or RTDNA (US) reports, or self-reported.

=end html


A diversity_staffing_report should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Article']>

=item C<Str>

=back

=cut

has diversity_staffing_report => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'diversityStaffingReport',
);


=head2 C<ethics_policy>

C<ethicsPolicy>

=begin html

Statement about ethics policy, e.g. of a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>
regarding journalistic and publishing practices, or of a <a
class="localLink" href="http://schema.org/Restaurant">Restaurant</a>, a
page describing food source policies. In the case of a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>,
an ethicsPolicy is typically a statement describing the personal,
organizational, and corporate standards of behavior expected by the
organization.

=end html


A ethics_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has ethics_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ethicsPolicy',
);


=head2 C<masthead>



=begin html

For a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>, a
link to the masthead page or a page listing top editorial management.

=end html


A masthead should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has masthead => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'masthead',
);


=head2 C<mission_coverage_priorities_policy>

C<missionCoveragePrioritiesPolicy>

=begin html

For a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>, a
statement on coverage priorities, including any public agenda or stance on
issues.

=end html


A mission_coverage_priorities_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has mission_coverage_priorities_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'missionCoveragePrioritiesPolicy',
);


=head2 C<no_bylines_policy>

C<noBylinesPolicy>

=begin html

For a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a> or
other news-related <a class="localLink"
href="http://schema.org/Organization">Organization</a>, a statement
explaining when authors of articles are not named in bylines.

=end html


A no_bylines_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has no_bylines_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'noBylinesPolicy',
);


=head2 C<ownership_funding_info>

C<ownershipFundingInfo>

=begin html

For an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (often but not
necessarily a <a class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>),
a description of organizational ownership structure; funding and grants. In
a news/media setting, this is with particular reference to editorial
independence. Note that the <a class="localLink"
href="http://schema.org/funder">funder</a> is also available and can be
used to make basic funder information machine-readable.

=end html


A ownership_funding_info should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AboutPage']>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has ownership_funding_info => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ownershipFundingInfo',
);


=head2 C<unnamed_sources_policy>

C<unnamedSourcesPolicy>

=begin html

For an <a class="localLink"
href="http://schema.org/Organization">Organization</a> (typically a <a
class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a>),
a statement about policy on use of unnamed sources and the decision process
required.

=end html


A unnamed_sources_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has unnamed_sources_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unnamedSourcesPolicy',
);


=head2 C<verification_fact_checking_policy>

C<verificationFactCheckingPolicy>

=begin html

Disclosure about verification and fact-checking processes for a <a
class="localLink"
href="http://schema.org/NewsMediaOrganization">NewsMediaOrganization</a> or
other fact-checking <a class="localLink"
href="http://schema.org/Organization">Organization</a>.

=end html


A verification_fact_checking_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has verification_fact_checking_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'verificationFactCheckingPolicy',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
