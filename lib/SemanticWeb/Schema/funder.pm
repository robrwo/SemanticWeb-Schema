use utf8;

package SemanticWeb::Schema::funder;

# ABSTRACT: A person or organization that supports (sponsors) something through some kind of financial contribution.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'funder';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A person or organization that supports (sponsors) something through some
kind of financial contribution.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
