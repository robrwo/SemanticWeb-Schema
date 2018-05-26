package LDF::Schema::Permit;

# ABSTRACT: A permit issued by an organization, e

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A permit issued by an organization, e.g. a parking pass.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<issued_by>

C<issuedBy>

The organization issuing the ticket or permit.


A issued_by should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has issued_by => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<issued_through>

C<issuedThrough>

The service through with the permit was granted.


A issued_through should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Service']>

=back

=cut

has issued_through => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<permit_audience>

C<permitAudience>

The target audience for this permit.


A permit_audience should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Audience']>

=back

=cut

has permit_audience => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<valid_for>

C<validFor>

The time validity of the permit.


A valid_for should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has valid_for => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<valid_from>

C<validFrom>

The date when the item becomes valid.


A valid_from should be one of the following types:

=over

=item C<Str>

=back

=cut

has valid_from => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<valid_in>

C<validIn>

The geographic area where the permit is valid.


A valid_in should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::AdministrativeArea']>

=back

=cut

has valid_in => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<valid_until>

C<validUntil>

The date when the item is no longer valid.


A valid_until should be one of the following types:

=over

=item C<Str>

=back

=cut

has valid_until => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Permit' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { issuedBy => 'issued_by' },
      { issuedThrough => 'issued_through' },
      { permitAudience => 'permit_audience' },
      { validFor => 'valid_for' },
      { validFrom => 'valid_from' },
      { validIn => 'valid_in' },
      { validUntil => 'valid_until' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
