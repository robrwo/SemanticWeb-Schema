package LDF::Schema::PublicationEvent;

# ABSTRACT: A PublicationEvent corresponds indifferently to the event of publication for a CreativeWork of any type e

use Moo;

extends qw/ LDF::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A PublicationEvent corresponds indifferently to the event of publication
for a CreativeWork of any type e.g. a broadcast event, an on-demand event,
a book/journal publication via a variety of delivery media.




=head1 ATTRIBUTES


=head2 C<free>



A flag to signal that the item, event, or place is accessible for free.


A free should be one of the following types:

=over

=item C<Bool>

=back

=cut

has free => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<is_accessible_for_free>

C<isAccessibleForFree>

A flag to signal that the item, event, or place is accessible for free.


A is_accessible_for_free should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_accessible_for_free => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<published_on>

C<publishedOn>

A broadcast service associated with the publication event.


A published_on should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::BroadcastService']>

=back

=cut

has published_on => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PublicationEvent' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { free => 'free' },
      { isAccessibleForFree => 'is_accessible_for_free' },
      { publishedOn => 'published_on' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Event>

=cut

1;
