use utf8;

package SemanticWeb::Schema::dateRead;

# ABSTRACT: The date/time at which the message has been read by the recipient if a single recipient exists.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'dateRead';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date/time at which the message has been read by the recipient if a
single recipient exists.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
