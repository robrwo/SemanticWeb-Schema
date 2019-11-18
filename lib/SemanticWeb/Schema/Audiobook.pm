use utf8;

package SemanticWeb::Schema::Audiobook;

# ABSTRACT: An audiobook.

use Moo;

extends qw/ SemanticWeb::Schema::AudioObject SemanticWeb::Schema::Book /;


use MooX::JSON_LD 'Audiobook';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

An audiobook.




=head1 ATTRIBUTES


=head2 C<duration>



=begin html

<p>The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.<p>

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

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
