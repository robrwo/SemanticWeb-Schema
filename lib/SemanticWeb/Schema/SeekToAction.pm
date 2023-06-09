use utf8;

package SemanticWeb::Schema::SeekToAction;

# ABSTRACT: This is the [[Action]] of navigating to a specific [[startOffset]] timestamp within a [[VideoObject]]

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'SeekToAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

This is the L<SemanticWeb::Schema::Action> of navigating to a specific [[startOffset]] timestamp within a L<SemanticWeb::Schema::VideoObject>, typically represented with a URL template structure.



=head1 ATTRIBUTES


=head2 C<start_offset>

C<startOffset>

The start time of the clip expressed as the number of seconds from the
beginning of the work.


A start_offset should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HyperTocEntry']>

=item C<Num>

=back

=head2 C<_has_start_offset>

A predicate for the L</start_offset> attribute.

=cut

has start_offset => (
    is        => 'rw',
    predicate => '_has_start_offset',
    json_ld   => 'startOffset',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
