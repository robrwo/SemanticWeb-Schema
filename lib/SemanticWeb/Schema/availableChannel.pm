use utf8;

package SemanticWeb::Schema::availableChannel;

# ABSTRACT: A means of accessing the service (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'availableChannel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A means of accessing the service (e.g. a phone bank, a web site, a
location, etc.).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
