use utf8;

package SemanticWeb::Schema::Audiobook;

# ABSTRACT: An audiobook.

use Moo;

extends qw/ SemanticWeb::Schema::AudioObject SemanticWeb::Schema::Book /;


use MooX::JSON_LD 'Audiobook';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

An audiobook.




=head1 ATTRIBUTES


=head2 C<duration>



The duration of the item (movie, audio recording, event, etc.) in [ISO 8601
date format](http://en.wikipedia.org/wiki/ISO_8601).


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_duration>

A predicate for the L</duration> attribute.

=cut

has duration => (
    is        => 'rw',
    predicate => '_has_duration',
    json_ld   => 'duration',
);


=head2 C<read_by>

C<readBy>

A person who reads (performs) the audiobook.


A read_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_read_by>

A predicate for the L</read_by> attribute.

=cut

has read_by => (
    is        => 'rw',
    predicate => '_has_read_by',
    json_ld   => 'readBy',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Book>

=cut

1;
