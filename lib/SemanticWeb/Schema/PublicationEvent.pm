use utf8;

package SemanticWeb::Schema::PublicationEvent;

# ABSTRACT: A PublicationEvent corresponds indifferently to the event of publication for a CreativeWork of any type

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'PublicationEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A PublicationEvent corresponds indifferently to the event of publication
for a CreativeWork of any type, e.g. a broadcast event, an on-demand event,
a book/journal publication via a variety of delivery media.




=head1 ATTRIBUTES


=head2 C<free>



A flag to signal that the item, event, or place is accessible for free.


A free should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_free>

A predicate for the L</free> attribute.

=cut

has free => (
    is        => 'rw',
    predicate => '_has_free',
    json_ld   => 'free',
);


=head2 C<published_by>

C<publishedBy>

An agent associated with the publication event.


A published_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_published_by>

A predicate for the L</published_by> attribute.

=cut

has published_by => (
    is        => 'rw',
    predicate => '_has_published_by',
    json_ld   => 'publishedBy',
);


=head2 C<published_on>

C<publishedOn>

A broadcast service associated with the publication event.


A published_on should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BroadcastService']>

=back

=head2 C<_has_published_on>

A predicate for the L</published_on> attribute.

=cut

has published_on => (
    is        => 'rw',
    predicate => '_has_published_on',
    json_ld   => 'publishedOn',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
