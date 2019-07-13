use utf8;

package SemanticWeb::Schema::DataDownload;

# ABSTRACT: A dataset in downloadable form.

use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'DataDownload';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A dataset in downloadable form.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
