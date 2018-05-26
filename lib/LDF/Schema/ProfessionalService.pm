package LDF::Schema::ProfessionalService;

# ABSTRACT: Original definition: "provider of professional services

use Moo;

extends qw/ LDF::Schema::LocalBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

Original definition: "provider of professional services."</p> <p>The
general <a class="localLink"
href="http://schema.org/ProfessionalService">ProfessionalService</a> type
for local businesses was deprecated due to confusion with <a
class="localLink" href="http://schema.org/Service">Service</a>. For
reference, the types that it included were: <a class="localLink"
href="http://schema.org/Dentist">Dentist</a>, <a class="localLink"
href="http://schema.org/AccountingService">AccountingService</a>, <a
class="localLink" href="http://schema.org/Attorney">Attorney</a>, <a
class="localLink" href="http://schema.org/Notary">Notary</a>, as well as
types for several kinds of <a class="localLink"
href="http://schema.org/HomeAndConstructionBusiness">HomeAndConstructionBus
iness</a>: <a class="localLink"
href="http://schema.org/Electrician">Electrician</a>, <a class="localLink"
href="http://schema.org/GeneralContractor">GeneralContractor</a>, <a
class="localLink" href="http://schema.org/HousePainter">HousePainter</a>,
<a class="localLink" href="http://schema.org/Locksmith">Locksmith</a>, <a
class="localLink" href="http://schema.org/Plumber">Plumber</a>, <a
class="localLink"
href="http://schema.org/RoofingContractor">RoofingContractor</a>. <a
class="localLink" href="http://schema.org/LegalService">LegalService</a>
was introduced as a more inclusive supertype of <a class="localLink"
href="http://schema.org/Attorney">Attorney</a>.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ProfessionalService' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
    ]
};



=head1 SEE ALSO



L<LDF::Schema::LocalBusiness>

=cut

1;
