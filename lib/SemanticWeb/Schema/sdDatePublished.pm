use utf8;

package SemanticWeb::Schema::sdDatePublished;

# ABSTRACT: Indicates the date on which the current structured data was generated / published

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sdDatePublished';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the date on which the current structured data was generated / published. Typically used alongside [[sdPublisher]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
